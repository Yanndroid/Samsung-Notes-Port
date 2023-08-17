.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;


# static fields
.field public static final synthetic a:Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/e0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
