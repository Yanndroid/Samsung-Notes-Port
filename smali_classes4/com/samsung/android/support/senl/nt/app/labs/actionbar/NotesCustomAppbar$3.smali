.class Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$3;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-eq p4, p8, :cond_0

    const-string p1, "NotesCustomAppbar"

    const-string p2, "onLayoutChange()"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$3;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->c(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)V

    :cond_0
    return-void
.end method
