.class Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->inflateView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->showMoreOptionsMenuList()V

    return-void
.end method
