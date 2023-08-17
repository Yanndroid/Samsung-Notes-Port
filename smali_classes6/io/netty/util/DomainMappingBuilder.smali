.class public final Lio/netty/util/DomainMappingBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final builder:Lio/netty/util/DomainNameMappingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/DomainNameMappingBuilder<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/util/DomainNameMappingBuilder;

    invoke-direct {v0, p1, p2}, Lio/netty/util/DomainNameMappingBuilder;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/DomainMappingBuilder;->builder:Lio/netty/util/DomainNameMappingBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/util/DomainNameMappingBuilder;

    invoke-direct {v0, p1}, Lio/netty/util/DomainNameMappingBuilder;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/DomainMappingBuilder;->builder:Lio/netty/util/DomainNameMappingBuilder;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/DomainMappingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Lio/netty/util/DomainMappingBuilder<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/DomainMappingBuilder;->builder:Lio/netty/util/DomainNameMappingBuilder;

    invoke-virtual {v0, p1, p2}, Lio/netty/util/DomainNameMappingBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/DomainNameMappingBuilder;

    return-object p0
.end method

.method public build()Lio/netty/util/DomainNameMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/DomainNameMapping<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/DomainMappingBuilder;->builder:Lio/netty/util/DomainNameMappingBuilder;

    invoke-virtual {v0}, Lio/netty/util/DomainNameMappingBuilder;->build()Lio/netty/util/DomainNameMapping;

    move-result-object v0

    return-object v0
.end method
