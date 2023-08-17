.class public final Lorg/apache/poi/openxml4j/opc/internal/marshallers/DefaultMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->save(Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method
