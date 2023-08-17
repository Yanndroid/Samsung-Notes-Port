.class Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$2;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment$2;->this$0:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->handleBackButtonPressed()V

    return-void
.end method
