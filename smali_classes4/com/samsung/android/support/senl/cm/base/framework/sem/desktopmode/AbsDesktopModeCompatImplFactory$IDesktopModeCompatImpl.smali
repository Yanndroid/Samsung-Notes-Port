.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/AbsDesktopModeCompatImplFactory$IDesktopModeCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/AbsDesktopModeCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDesktopModeCompatImpl"
.end annotation


# static fields
.field public static final DEX_DUAL_MODE:I = 0x9000

.field public static final DEX_OFF_MODE:I = 0x0

.field public static final DEX_ON_DEVICE:I = 0x200

.field public static final DEX_ON_MODE:I = 0x8000

.field public static final DEX_ON_SCREEN:I = 0x100

.field public static final DEX_STAND_ALONE_MODE:I = 0x8000


# virtual methods
.method public abstract getDexModeType(Landroid/content/Context;)I
.end method

.method public abstract getScreenLocation(Landroid/content/Context;)I
.end method

.method public abstract isDexMode(Landroid/content/Context;)Z
.end method

.method public abstract isDexModeType(Landroid/content/Context;I)Z
.end method
