.class public Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/ContentTitleCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = ", "

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ContentTitleCreator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/ContentTitleCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendSeparator(Ljava/lang/StringBuilder;Z)V
    .locals 0
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static create(Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->DRAWING:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/ContentTitleCreator;->appendSeparator(Ljava/lang/StringBuilder;Z)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->IMAGE:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/16 v1, 0xa

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x200

    invoke-virtual {p0, p1, v1, v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->findFirstObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/ContentTitleCreator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create, find object : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/ContentTitleCreator;->appendSeparator(Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->isRecorded()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create, find audio object - isRecorded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    sget-object p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->RECORDING:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
