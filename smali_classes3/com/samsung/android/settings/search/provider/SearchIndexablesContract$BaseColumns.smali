.class public Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$BaseColumns;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseColumns"
.end annotation


# static fields
.field public static final COLUMN_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final COLUMN_ICON_RESID:Ljava/lang/String; = "iconResId"

.field public static final COLUMN_INTENT_ACTION:Ljava/lang/String; = "intentAction"

.field public static final COLUMN_INTENT_TARGET_CLASS:Ljava/lang/String; = "intentTargetClass"

.field public static final COLUMN_INTENT_TARGET_PACKAGE:Ljava/lang/String; = "intentTargetPackage"

.field public static final COLUMN_RANK:Ljava/lang/String; = "rank"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$BaseColumns;-><init>()V

    return-void
.end method
