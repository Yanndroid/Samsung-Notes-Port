.class public final Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$ServerOnlyFolderNode;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$AutoTagList;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$TagList;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$PageSearchInfo;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$Retry;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$TextSearch;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$StrokeSearch;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$DocumentTemplate;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$CategoryTreeClosure;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$CategoryTree;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$CategoryMemoCountView;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$Category;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$Content;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$Account;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$DocumentPage;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$MappedDocument;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$Document;,
        Lcom/samsung/android/support/senl/nt/data/database/core/schema/DBSchema$DocumentProjection;
    }
.end annotation


# static fields
.field private static final CATEGORY_MEMO_COUNT_VIEW_NAME:Ljava/lang/String; = "category_memo_count"

.field private static final CATEGORY_TABLE_NAME:Ljava/lang/String; = "category"

.field private static final CATEGORY_TREE_CLOSURE_TABLE_NAME:Ljava/lang/String; = "category_tree_closure"

.field private static final CATEGORY_TREE_TABLE_NAME:Ljava/lang/String; = "category_tree"

.field private static final CONTENT_TABLE_NAME:Ljava/lang/String; = "content"

.field private static final DOCUMENT_TEMPLATE_TABLE_NAME:Ljava/lang/String; = "document_template"

.field private static final RETRY_TABLE_NAME:Ljava/lang/String; = "retry"

.field private static final STROKE_TABLE_NAME:Ljava/lang/String; = "stroke"

.field private static final TEXT_SEARCH_TABLE_NAME:Ljava/lang/String; = "text_search"

.field private static final UUID_STRING:Ljava/lang/String; = "UUID"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
