.class public final synthetic Lcom/samsung/android/support/senl/nt/app/updater/restore/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager$PostJob;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/c;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/c;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/c;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/c;->b:Ljava/util/Set;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->b(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method
