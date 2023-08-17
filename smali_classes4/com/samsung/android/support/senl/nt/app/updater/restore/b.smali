.class public final synthetic Lcom/samsung/android/support/senl/nt/app/updater/restore/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager$PostJob;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/b;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/b;->a:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->a(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/util/List;)V

    return-void
.end method
