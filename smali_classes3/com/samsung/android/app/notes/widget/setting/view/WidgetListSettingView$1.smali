.class Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->initSettingList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->b(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->onNotePickerClicked()V

    return-void
.end method
