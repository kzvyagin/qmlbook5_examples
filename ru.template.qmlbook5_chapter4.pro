TARGET = ru.template.qmlbook5_chapter4

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    assets/triangle_red.png \
    qml/pages/Button2For43.qml \
    qml/pages/ButtonFor43.qml \
    qml/pages/example_4_1.qml \
    qml/pages/example_4_1_1.qml \
    qml/pages/example_4_1_2.qml \
    qml/pages/example_4_2_2.qml \
    qml/pages/example_4_2_3.qml \
    qml/pages/example_4_2_4.qml \
    qml/pages/example_4_2_5.qml \
    qml/pages/example_4_3.qml \
    qml/pages/example_4_template.qml \
   rpm/ru.template.qmlbook5_chapter4.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.template.qmlbook5_chapter4.ts \
    translations/ru.template.qmlbook5_chapter4-ru.ts \

DEPLOYMENT += assets/*

RESOURCES += \
    resources.qrc
