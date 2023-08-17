.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->addExternalStoragePermissionGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->isExternalStorageTipCardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardExternalStorageNotGranted;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardExternalStorageNotGranted;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    :cond_1
    return-void
.end method
