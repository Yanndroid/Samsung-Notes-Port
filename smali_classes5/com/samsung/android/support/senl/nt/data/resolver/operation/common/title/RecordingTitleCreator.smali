.class public Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/RecordingTitleCreator;
.super Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator<",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RecordingTitleCreator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/RecordingTitleCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;-><init>()V

    return-void
.end method

.method private hasVoiceRecording(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public apply(Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->needToCreateTitle(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/RecordingTitleCreator;->hasVoiceRecording(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/RecordingTitleCreator;->TAG:Ljava/lang/String;

    const-string p2, "apply, find voice recording"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->RECORDING:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method
