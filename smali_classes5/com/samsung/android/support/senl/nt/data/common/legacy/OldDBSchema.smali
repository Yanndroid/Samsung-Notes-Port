.class public Lcom/samsung/android/support/senl/nt/data/common/legacy/OldDBSchema;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/common/legacy/OldDBSchema$HashTagContent;,
        Lcom/samsung/android/support/senl/nt/data/common/legacy/OldDBSchema$HashTag;,
        Lcom/samsung/android/support/senl/nt/data/common/legacy/OldDBSchema$Retry;,
        Lcom/samsung/android/support/senl/nt/data/common/legacy/OldDBSchema$StrokeSearch;,
        Lcom/samsung/android/support/senl/nt/data/common/legacy/OldDBSchema$Category;,
        Lcom/samsung/android/support/senl/nt/data/common/legacy/OldDBSchema$Content;,
        Lcom/samsung/android/support/senl/nt/data/common/legacy/OldDBSchema$SDoc;
    }
.end annotation


# static fields
.field private static final CATEGORY_TABLE_NAME:Ljava/lang/String; = "category"

.field private static final CONTENT_TABLE_NAME:Ljava/lang/String; = "content"

.field private static final HASHTAG_CONTENT_TABLE_NAME:Ljava/lang/String; = "hashtagContent"

.field private static final HASHTAG_TABLE_NAME:Ljava/lang/String; = "hashtag"

.field private static final RETRY_TABLE_NAME:Ljava/lang/String; = "retry"

.field private static final SDOC_TABLE_NAME:Ljava/lang/String; = "sdoc"

.field private static final STROKE_TABLE_NAME:Ljava/lang/String; = "stroke"

.field private static final UUID_STRING:Ljava/lang/String; = "UUID"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
