.class Landroidx/appcompat/widget/SeslProgressBar$StateListDrawableCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListDrawableCompat"
.end annotation


# static fields
.field private static final IS_BASE_SDK_VERSION:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/appcompat/widget/SeslProgressBar$StateListDrawableCompat;->IS_BASE_SDK_VERSION:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/SeslProgressBar$StateListDrawableCompat;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/reflect/graphics/drawable/SeslStateListDrawableReflector;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/SeslProgressBar$StateListDrawableCompat;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroidx/reflect/graphics/drawable/SeslStateListDrawableReflector;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/widget/SeslProgressBar$StateListDrawableCompat;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroidx/reflect/graphics/drawable/SeslStateListDrawableReflector;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
