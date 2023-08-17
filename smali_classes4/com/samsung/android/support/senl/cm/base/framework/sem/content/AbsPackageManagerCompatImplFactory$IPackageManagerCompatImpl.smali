.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/content/AbsPackageManagerCompatImplFactory$IPackageManagerCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/content/AbsPackageManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPackageManagerCompatImpl"
.end annotation


# static fields
.field public static final FEATURE_TYPE_DUAL_SCREEN:I = 0x3

.field public static final FEATURE_TYPE_FOLDER_TYPE:I = 0x2

.field public static final FEATURE_TYPE_SAMSUNG_EXPERIENCE_MOBILE:I = 0x0

.field public static final FEATURE_TYPE_SAMSUNG_EXPERIENCE_MOBILE_LITE:I = 0x1


# virtual methods
.method public abstract getApplicationIconForIconTray(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract hasFeature(Landroid/content/Context;I)Z
.end method
