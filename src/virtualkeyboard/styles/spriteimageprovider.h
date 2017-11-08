#ifndef SPRITEIMAGEPROVIDER_H
#define SPRITEIMAGEPROVIDER_H

#include <qquickimageprovider.h>
#include <QPixmap>
#include <QMap>
#include <QPoint>

class SpriteImageProvider : public QQuickImageProvider
{
public:
    SpriteImageProvider();
    QPixmap requestPixmap(const QString &id, QSize *size, const QSize &requestedSize);

    void setIconHeight(int height) { m_iconHeight = height; }
    int iconHeight() { return m_iconHeight; }
    void setIconWidth(int width) { m_iconWidth = width; }
    int iconWidth() { return m_iconWidth; }
    void setImage(const QString& path) { m_pixmap.load(path); }
    void addUnicode(int unicode, QPoint xy) { m_xyForUnicode.insert(unicode, xy); }

private:
    QPixmap m_pixmap;
    int m_iconWidth;
    int m_iconHeight;
    QMap<int, QPoint> m_xyForUnicode;
};

#endif // SPRITEIMAGEPROVIDER_H
