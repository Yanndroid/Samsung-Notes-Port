.class Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;->decorateItemView(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;

.field public final synthetic val$data:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$1;->val$data:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;->a(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$Contract;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$1;->val$data:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$Contract;->onItemSelected(Ljava/lang/String;)V

    return-void
.end method
