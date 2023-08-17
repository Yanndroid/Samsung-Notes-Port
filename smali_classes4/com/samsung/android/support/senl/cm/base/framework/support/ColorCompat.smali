.class public Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplBase;,
        Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplUnderO;
    }
.end annotation


# static fields
.field private static mImple:Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-le v0, v2, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplBase;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplBase;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/support/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplUnderO;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplUnderO;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/support/b;)V

    :goto_0
    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->mImple:Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSVToColor([F)I
    .locals 1
    .param p0    # [F
        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->mImple:Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImpl;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public static colorToHSV(I[F)V
    .locals 1
    .param p1    # [F
        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->mImple:Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImpl;->colorToHSV(I[F)V

    return-void
.end method
