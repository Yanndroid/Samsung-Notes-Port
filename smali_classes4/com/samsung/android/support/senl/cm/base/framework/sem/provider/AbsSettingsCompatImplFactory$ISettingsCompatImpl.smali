.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISettingsCompatImpl"
.end annotation


# static fields
.field public static final PEN_DETACHMENT_OPTION:Ljava/lang/String; = "pen_detachment_option"

.field public static final PEN_DETECTED_DEF:I = 0x0

.field public static final PEN_USAGE_DETECTED:Ljava/lang/String; = "pen_usage_detected"


# virtual methods
.method public abstract getEasyMode(Landroid/content/Context;)I
.end method

.method public abstract getEasyModeUri()Landroid/net/Uri;
.end method

.method public abstract getGlobalFontSize(Landroid/content/Context;)I
.end method

.method public abstract getMinimalBatteryUse(Landroid/content/Context;)I
.end method

.method public abstract getPenDetachOption(Landroid/content/Context;)I
.end method

.method public abstract getPenUsageDetected(Landroid/content/Context;)I
.end method
