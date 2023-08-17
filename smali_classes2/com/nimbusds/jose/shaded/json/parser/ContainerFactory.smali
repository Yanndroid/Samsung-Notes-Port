.class public interface abstract Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FACTORY_ORDERED:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

.field public static final FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory$1;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory$1;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory$2;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory$2;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_ORDERED:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    return-void
.end method


# virtual methods
.method public abstract createArrayContainer()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createObjectContainer()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
