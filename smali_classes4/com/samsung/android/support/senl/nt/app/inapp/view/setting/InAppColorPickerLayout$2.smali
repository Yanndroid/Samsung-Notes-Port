.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->close()V

    return-void
.end method
