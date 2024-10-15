TARGET = ru.template.qmlbook5_chapter4

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    assets/triangle_red.png \
    qml/chapter4/BlueSquare.qml \
    qml/chapter4/Button2For43.qml \
    qml/chapter4/ButtonFor43.qml \
    qml/chapter4/ClickableImage44.qml \
    qml/chapter4/GreenSquare.qml \
    qml/chapter4/RedSquare.qml \
    qml/chapter4/TLineEditV1.qml \
    qml/chapter4/TTextEdit473.qml \
    qml/chapter4/example_4_1.qml \
    qml/chapter4/example_4_1_1.qml \
    qml/chapter4/example_4_1_2.qml \
    qml/chapter4/example_4_2_2.qml \
    qml/chapter4/example_4_2_3.qml \
    qml/chapter4/example_4_2_4.qml \
    qml/chapter4/example_4_2_5.qml \
    qml/chapter4/example_4_3.qml \
    qml/chapter4/example_4_4.qml \
    qml/chapter4/example_4_5.qml \
    qml/chapter4/example_4_5_2.qml \
    qml/chapter4/example_4_6.qml \
    qml/chapter4/example_4_7.qml \
    qml/chapter4/example_4_7_2.qml \
    qml/chapter4/example_4_7_3.qml \
    qml/chapter4/example_4_7_4.qml \
    qml/chapter4/example_4_template.qml \
    rpm/ru.template.qmlbook5_chapter4.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.template.qmlbook5_chapter4.ts \
    translations/ru.template.qmlbook5_chapter4-ru.ts \

DEPLOYMENT += assets/*

RESOURCES += \
    resources.qrc
