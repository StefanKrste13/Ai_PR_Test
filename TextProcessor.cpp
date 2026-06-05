#include "TextProcessor.h"

TextProcessor::TextProcessor(QObject *parent)
    : QObject(parent)
    , m_resultText("")
{
}

QString TextProcessor::resultText() const
{
    return m_resultText;
}

void TextProcessor::setResultText(const QString &text)
{
    if (m_resultText != text) {
        m_resultText = text;
        emit resultTextChanged();
    }
}

QString TextProcessor::processText(const QString &input)
{
    QString upper = input.toUpper();
    setResultText(upper);
    return upper;
}
