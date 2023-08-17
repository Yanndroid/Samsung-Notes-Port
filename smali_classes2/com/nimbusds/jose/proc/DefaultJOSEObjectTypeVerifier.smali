.class public Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field public static final JOSE:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

.field public static final JWT:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;


# instance fields
.field private final allowedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/nimbusds/jose/JOSEObjectType;

    sget-object v3, Lcom/nimbusds/jose/JOSEObjectType;->JOSE:Lcom/nimbusds/jose/JOSEObjectType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v2, v3

    invoke-direct {v0, v2}, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;-><init>([Lcom/nimbusds/jose/JOSEObjectType;)V

    sput-object v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->JOSE:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    new-instance v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    new-array v1, v1, [Lcom/nimbusds/jose/JOSEObjectType;

    sget-object v2, Lcom/nimbusds/jose/JOSEObjectType;->JWT:Lcom/nimbusds/jose/JOSEObjectType;

    aput-object v2, v1, v4

    aput-object v5, v1, v3

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;-><init>([Lcom/nimbusds/jose/JOSEObjectType;)V

    sput-object v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->JWT:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The allowed types must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([Lcom/nimbusds/jose/JOSEObjectType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The allowed types must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAllowedTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    return-object v0
.end method

.method public verify(Lcom/nimbusds/jose/JOSEObjectType;Lcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "TC;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p2, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Required JOSE header \"typ\" (type) parameter is missing"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->allowedTypes:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Lcom/nimbusds/jose/proc/BadJOSEException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JOSE header \"typ\" (type) \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" not allowed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
