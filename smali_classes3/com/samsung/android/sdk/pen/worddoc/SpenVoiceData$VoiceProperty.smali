.class public Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceProperty"
.end annotation


# static fields
.field public static final VOICE_ACTION_NONE:I = 0x0

.field public static final VOICE_ACTION_PAUSE:I = 0x2

.field public static final VOICE_ACTION_RESUME:I = 0x3

.field public static final VOICE_ACTION_START:I = 0x1

.field public static final VOICE_ACTION_STOP:I = 0x4


# instance fields
.field private action:I

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->action:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->timeStamp:J

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->action:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData$VoiceProperty;->timeStamp:J

    return-wide v0
.end method
