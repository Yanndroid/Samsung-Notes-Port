.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory$IDisplayDeviceTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/display/AbsDisplayDeviceTypeImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDisplayDeviceTypeImpl"
.end annotation


# static fields
.field public static final DISPLAY_DEVICE_TYPE_MAIN:I = 0x0

.field public static final DISPLAY_DEVICE_TYPE_NONE:I = -0x1

.field public static final DISPLAY_DEVICE_TYPE_SUB:I = 0x5


# virtual methods
.method public abstract getDisplayDeviceType(Landroid/content/Context;)I
.end method

.method public abstract getDisplayDeviceType(Landroid/content/res/Configuration;)I
.end method

.method public abstract isMainDisplay(Landroid/content/res/Configuration;)Z
.end method

.method public abstract isSubDisplay(Landroid/content/res/Configuration;)Z
.end method
