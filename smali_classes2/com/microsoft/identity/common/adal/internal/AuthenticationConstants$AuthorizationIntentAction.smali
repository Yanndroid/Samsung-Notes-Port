.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$AuthorizationIntentAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorizationIntentAction"
.end annotation


# static fields
.field public static final DESTROY_REDIRECT_RECEIVING_ACTIVITY_ACTION:Ljava/lang/String; = "destroy_redirect_receiving_activity_action"

.field public static final REDIRECT_RETURNED_ACTION:Ljava/lang/String; = "redirect_returned_action"

.field public static final REFRESH_TO_CLOSE:Ljava/lang/String; = "refresh_to_close"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
