#ifndef TEXTPROCESSOR_H
#define TEXTPROCESSOR_H

#include <QObject>

class TextProcessor : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString resultText READ resultText WRITE setResultText NOTIFY resultTextChanged)

public:
    explicit TextProcessor(QObject *parent = nullptr);

    QString resultText() const;
    void setResultText(const QString &text);

public slots:
    Q_INVOKABLE QString processText(const QString &input);

signals:
    void resultTextChanged();

private:
    QString m_resultText;
};

#endif // TEXTPROCESSOR_H
