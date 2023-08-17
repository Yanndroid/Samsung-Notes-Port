.class Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter$MyDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDatabaseErrorHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter$MyDatabaseErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/NMemoConverter;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
