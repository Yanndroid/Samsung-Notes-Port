.class Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorCompatImplBase"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/support/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat$ColorCompatImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public HSVToColor([F)I
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    return p1
.end method

.method public colorToHSV(I[F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method
