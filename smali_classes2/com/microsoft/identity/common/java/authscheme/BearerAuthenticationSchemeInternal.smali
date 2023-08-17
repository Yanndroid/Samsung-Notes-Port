.class public Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;
.super Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;
.source "SourceFile"


# static fields
.field public static final SCHEME_BEARER:Ljava/lang/String; = "Bearer"

.field private static final serialVersionUID:J = 0xb6c77fc97418afeL


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Bearer"

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccessTokenForScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "accessToken is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p1
.end method
