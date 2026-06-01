#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include "TextProcessor.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<TextProcessor>("App.Backend", 1, 0, "TextProcessor");

    QQmlApplicationEngine engine;












    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("AiTest", "Main");

    return app.exec();
}
