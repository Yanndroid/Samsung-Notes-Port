.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuSAUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MenuSAUtils"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuSAUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSADetailValue(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)Ljava/lang/String;
    .locals 4

    const-string v0, "2"

    const-string v1, "1"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->hasSelectedText()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->hasSelectedImage()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isSelectedObjectOfObjectSpan()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;->findObjectSpan(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p0

    goto :goto_2

    :cond_4
    :goto_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuSAUtils;->TAG:Ljava/lang/String;

    const-string p1, "getSADetailValue# findObjectSpan is null"

    :goto_1
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_6

    return-object v1

    :cond_6
    const/4 p1, 0x3

    if-ne p0, p1, :cond_7

    return-object v0

    :cond_7
    const/16 p1, 0xe

    if-ne p0, p1, :cond_8

    const-string p0, "3"

    return-object p0

    :cond_8
    const/16 p1, 0xa

    if-ne p0, p1, :cond_9

    const-string p0, "4"

    return-object p0

    :cond_9
    const/16 p1, 0xd

    if-ne p0, p1, :cond_a

    const-string p0, "5"

    return-object p0

    :cond_a
    const/4 p1, 0x1

    if-eq p0, p1, :cond_c

    const/4 p1, 0x7

    if-eq p0, p1, :cond_c

    const/16 p1, 0x8

    if-eq p0, p1, :cond_c

    const/4 p1, 0x4

    if-ne p0, p1, :cond_b

    goto :goto_3

    :cond_b
    return-object v1

    :cond_c
    :goto_3
    const-string p0, "7"

    return-object p0

    :cond_d
    :goto_4
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuSAUtils;->TAG:Ljava/lang/String;

    const-string p1, "getSADetailValue# SelectedObjectList is null"

    goto :goto_1
.end method
