.class public Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTagFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentTagFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create, tagName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentTagFactory"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTagFactory;->create(Ljava/lang/String;I)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;I)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTag;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTag;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/tag/DocumentTag;->setName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;->setColor(I)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    move-result-object p0

    return-object p0
.end method
