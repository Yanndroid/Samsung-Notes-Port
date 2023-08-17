.class Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO_Impl$5;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO_Impl$5;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT sdoc SET isDeleted=1 , serverTimestamp=serverTimestamp+1 , isDirty=1 , categoryisDirty=1 , categoryServerTimestamp=categoryServerTimestamp+1 WHERE categoryUUID=?"

    return-object v0
.end method
