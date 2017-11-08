#include "spriteimageprovider.h"
#include <QtDebug>
#include <QImage>

SpriteImageProvider::SpriteImageProvider() :
    QQuickImageProvider(QQuickImageProvider::Pixmap),
    m_pixmap(),
    m_iconWidth(0),
    m_iconHeight(0),
    m_xyForUnicode()
{
}

QPixmap SpriteImageProvider::requestPixmap(const QString &id, QSize *size, const QSize &requestedSize)
{
    Q_UNUSED(requestedSize);

    if (size)
        *size = QSize(m_iconWidth, m_iconHeight);

    int xIndex = 0;
    int yIndex = 0;
    bool ok = true;

    QStringList params = id.split('/');
    // params directly contains x,y coordinates
    if (params.size() == 2) {
        params.at(0).toInt(&ok);
        params.at(1).toInt(&ok);
    // params contains unicodevalue, that has to be mapped to coordinates
    } else if (params.size() == 1) {
        int unicodeValue = params.at(0).toInt(&ok);
        auto point = m_xyForUnicode.value(unicodeValue);
        xIndex = point.x();
        yIndex = point.y();
    }

    if (!ok || xIndex < 1 || yIndex < 1) {
        return QPixmap();
    }

    return m_pixmap.copy((xIndex-1)*m_iconWidth, (yIndex-1)*m_iconHeight, m_iconWidth, m_iconHeight);
}
