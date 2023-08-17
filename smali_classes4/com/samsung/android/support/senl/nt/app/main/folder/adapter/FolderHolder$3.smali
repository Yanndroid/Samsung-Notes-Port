.class Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateFolderToSyncSwitch(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->toggleFolderSyncSwitch(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    return-void
.end method
