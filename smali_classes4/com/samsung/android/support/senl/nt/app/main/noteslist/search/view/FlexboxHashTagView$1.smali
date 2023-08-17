.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "221"

    const-string v1, "2235"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxHashTagView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/RecentSearchListFragment$SearchListener;->onHashTagSelected(Ljava/lang/String;)V

    return-void
.end method
