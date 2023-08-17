.class Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;->decorateDescriptionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "OldCategoryHolder"

    const-string v0, "decorateDescriptionView# start convert all notes"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setConvertSuggestionTipCardDisabled()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;->a(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder;)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/holder/OldCategoryHolder$Contract;->startConvertAllNotes()V

    return-void
.end method
