.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$OldSharedNotebooksSmartTipPopup;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OldSharedNotebooksSmartTipPopup"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLayoutChangeListener()Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$OldSharedNotebooksSmartTipPopup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$OldSharedNotebooksSmartTipPopup$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$OldSharedNotebooksSmartTipPopup;)V

    return-object v0
.end method
