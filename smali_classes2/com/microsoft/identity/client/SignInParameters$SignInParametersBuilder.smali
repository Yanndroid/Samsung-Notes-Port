.class public Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/SignInParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignInParametersBuilder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/microsoft/identity/client/AuthenticationCallback;

.field private loginHint:Ljava/lang/String;

.field private prompt:Lcom/microsoft/identity/client/Prompt;

.field private scopes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/client/SignInParameters;
    .locals 7

    iget-object v0, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    move-object v4, v0

    new-instance v0, Lcom/microsoft/identity/client/SignInParameters;

    iget-object v2, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->loginHint:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->prompt:Lcom/microsoft/identity/client/Prompt;

    iget-object v6, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->callback:Lcom/microsoft/identity/client/AuthenticationCallback;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/identity/client/SignInParameters;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/microsoft/identity/client/Prompt;Lcom/microsoft/identity/client/AuthenticationCallback;)V

    return-object v0
.end method

.method public clearScopes()Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignInParameters.SignInParametersBuilder(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loginHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->loginHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->prompt:Lcom/microsoft/identity/client/Prompt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->callback:Lcom/microsoft/identity/client/AuthenticationCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "activity is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public withCallback(Lcom/microsoft/identity/client/AuthenticationCallback;)Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;
    .locals 1
    .param p1    # Lcom/microsoft/identity/client/AuthenticationCallback;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "callback is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->callback:Lcom/microsoft/identity/client/AuthenticationCallback;

    return-object p0
.end method

.method public withLoginHint(Ljava/lang/String;)Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->loginHint:Ljava/lang/String;

    return-object p0
.end method

.method public withPrompt(Lcom/microsoft/identity/client/Prompt;)Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;
    .locals 0
    .param p1    # Lcom/microsoft/identity/client/Prompt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->prompt:Lcom/microsoft/identity/client/Prompt;

    return-object p0
.end method

.method public withScope(Ljava/lang/String;)Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withScopes(Ljava/util/Collection;)Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;"
        }
    .end annotation

    const-string v0, "scopes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/client/SignInParameters$SignInParametersBuilder;->scopes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
