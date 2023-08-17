.class public abstract Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;
.super Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/authscheme/ITokenAuthenticationSchemeInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "Lombok inserts redundant null checks into the code"
    value = {
        "RCN_REDUNDANT_NULLCHECK_WOULD_HAVE_BEEN_A_NPE"
    }
.end annotation


# static fields
.field public static final SCHEME_DELIMITER:Ljava/lang/String; = " "

.field private static final serialVersionUID:J = 0x6f1ed6d39e6ee10bL


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;-><init>(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme$AbstractAuthenticationSchemeBuilder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;-><init>(Ljava/lang/String;)V

    const-string v0, "name is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;

    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->hashCode()I

    move-result v0

    return v0
.end method
