.class final Lcom/microsoft/identity/client/Constants$MsalErrorMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MsalErrorMessage"
.end annotation


# static fields
.field public static final AUTHORIZATION_SERVER_INVALID_RESPONSE:Ljava/lang/String; = "The authorization server returned an invalid response."

.field public static final STATE_NOT_RETURNED:Ljava/lang/String; = "State is not returned"

.field public static final STATE_NOT_THE_SAME:Ljava/lang/String; = "Returned state from authorize endpoint is not the same as the one sent"

.field public static final USER_CANCELLED_FLOW:Ljava/lang/String; = "User pressed device back button to cancel the flow."


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
