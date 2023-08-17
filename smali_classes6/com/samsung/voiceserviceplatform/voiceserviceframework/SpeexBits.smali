.class public Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public address:J

.field public bitPtr:I

.field public bytePtr:I

.field public nbBits:I

.field public owner:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;->address:J

    return-void
.end method
