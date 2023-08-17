.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "221"

    const-string v1, "2232"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/FlexboxSearchView;)[Ljava/lang/Long;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor;->deleteSearchKeyword(J)V

    return-void
.end method
