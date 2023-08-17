.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->showImportCancelDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;

.field public final synthetic val$tipCardType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$4;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$4;->val$tipCardType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "713"

    const-string v0, "7132"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object p2

    invoke-virtual {p2}, Lx0/a;->b()V

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lb3/u;->n(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$4;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$4;->val$tipCardType:I

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
