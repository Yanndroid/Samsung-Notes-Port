.class public final synthetic Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/d;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    iput-wide p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/d;->b:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/d;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/d;->b:J

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;JLjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
