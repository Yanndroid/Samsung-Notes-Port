.class public Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LASERPEN_TYPE_MAX:I = 0x2

.field public static final LASERPEN_TYPE_POINT:I = 0x0

.field public static final LASERPEN_TYPE_STROKE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenNoteLaserManager"


# instance fields
.field private mLaserView:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->mLaserView:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->mType:I

    return-void
.end method

.method private static native Native_setEnabled(JZ)V
.end method

.method private static native Native_setType(JI)V
.end method


# virtual methods
.method public close()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->mLaserView:J

    return-void
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->mType:I

    return v0
.end method

.method public setEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->mLaserView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->Native_setEnabled(JZ)V

    :cond_0
    return-void
.end method

.method public setNativeHandle(J)V
    .locals 2

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->mLaserView:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SpenNoteLaserManager::setNativeHandle mLaserView : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->mLaserView:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenNoteLaserManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setType(I)V
    .locals 4

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->mLaserView:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->Native_setType(JI)V

    iput p1, p0, Lcom/samsung/android/sdk/composer/laserview/SpenNoteLaserManager;->mType:I

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x7

    const-string v0, "Laser pen type is invalid"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void
.end method
