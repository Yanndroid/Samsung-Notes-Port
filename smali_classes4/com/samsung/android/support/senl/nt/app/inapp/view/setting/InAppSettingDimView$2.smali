.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->setItemViewVisibility(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

.field public final synthetic val$itemView:Landroid/view/ViewGroup;

.field public final synthetic val$toolbarId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;ILandroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$2;->val$toolbarId:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$2;->val$itemView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$2;->val$toolbarId:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$2;->val$itemView:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->b(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;ILandroid/view/ViewGroup;)V

    return-void
.end method
