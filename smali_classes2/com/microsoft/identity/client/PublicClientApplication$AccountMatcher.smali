.class public Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/PublicClientApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountMatcher"
.end annotation


# instance fields
.field private final mDelegateMatchers:[Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

.field public final synthetic this$0:Lcom/microsoft/identity/client/PublicClientApplication;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;->mDelegateMatchers:[Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    return-void
.end method

.method public varargs constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication;[Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;)V
    .locals 0
    .param p1    # Lcom/microsoft/identity/client/PublicClientApplication;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;->mDelegateMatchers:[Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/client/IAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;->mDelegateMatchers:[Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;->matches(Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3
.end method
