.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/media/MediaPlayerCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static SEEK_TYPE_ACCURATE_FRAME:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSeekTo(Landroid/media/MediaPlayer;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->semSeekTo(II)V

    return-void
.end method
