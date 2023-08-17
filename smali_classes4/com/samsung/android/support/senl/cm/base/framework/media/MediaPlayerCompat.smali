.class public Lcom/samsung/android/support/senl/cm/base/framework/media/MediaPlayerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEEK_TYPE_ACCURATE_FRAME:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/MediaPlayerCompatImpl;->SEEK_TYPE_ACCURATE_FRAME:I

    sput v0, Lcom/samsung/android/support/senl/cm/base/framework/media/MediaPlayerCompat;->SEEK_TYPE_ACCURATE_FRAME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSeekTo(Landroid/media/MediaPlayer;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/MediaPlayerCompatImpl;->setSeekTo(Landroid/media/MediaPlayer;II)V

    return-void
.end method
