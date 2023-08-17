.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/media/BitmapCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/media/BitmapCompatImplFactory$BitmapCompatSemImpl;
    }
.end annotation


# static fields
.field private static final MIME_HEIC:Ljava/lang/String; = "image/heic"

.field private static final MIME_HEIF:Ljava/lang/String; = "image/heif"

.field private static final TAG:Ljava/lang/String; = "BitmapCompatImplFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/BitmapCompatImplFactory$BitmapCompatSemImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/BitmapCompatImplFactory$BitmapCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/media/e;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsBitmapCompatImplFactory$IBitmapCompatImpl;

    move-result-object p1

    return-object p1
.end method
