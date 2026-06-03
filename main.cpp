#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "TextProcessor.h"

int main(int argc, char *argv[])
{
    QGuiApplication a(argc, argv);

    QQmlApplicationEngine *e = new QQmlApplicationEngine();

    TextProcessor *tp = new TextProcessor();
    e->rootContext()->setContextProperty("textProcessor", tp);

    e->load(QUrl("qrc:/main.qml"));

    if (e->rootObjects().isEmpty())
        return -1;

    return a.exec();
}
