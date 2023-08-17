.class final Lorg/apache/xmlbeans/impl/store/Saver$FilterPiSaveCur;
.super Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterPiSaveCur"
.end annotation


# instance fields
.field private _piTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterPiSaveCur;->_piTarget:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->kind()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterPiSaveCur;->_piTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
