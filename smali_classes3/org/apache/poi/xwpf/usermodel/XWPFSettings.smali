.class public Lorg/apache/poi/xwpf/usermodel/XWPFSettings;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method private readFrom(Ljava/io/InputStream;)V
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/SettingsDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/SettingsDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/SettingsDocument;->getSettings()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->setDocumentProtection(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public commit()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "settings"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v2, v1, v0}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to write out settings that were never read in!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getZoomPercent()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetZoom()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->addNewZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;->getPercent()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x64

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEnforcedWith()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getEnforcement()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getEnforcement()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getEdit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isTrackRevisions()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetTrackRevisions()Z

    move-result v0

    return v0
.end method

.method public isUpdateFields()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetUpdateFields()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getUpdateFields()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDocumentRead()V
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/POIXMLDocumentPart;->onDocumentRead()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method public removeEnforcement()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEnforcement(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEnforcement(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEdit(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    return-void
.end method

.method public setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEnforcement(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEdit(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    if-nez p2, :cond_6

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptProviderType()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptProviderType()V

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptAlgorithmClass()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptAlgorithmClass()V

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptAlgorithmType()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptAlgorithmType()V

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptAlgorithmSid()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptAlgorithmSid()V

    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetSalt()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetSalt()V

    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptSpinCount()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptSpinCount()V

    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetHash()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetHash()V

    goto/16 :goto_1

    :cond_6
    if-nez p3, :cond_7

    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    :cond_7
    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFSettings$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hash algorithm \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\' is not supported for document write protection."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_AES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    const/16 v0, 0xe

    goto :goto_0

    :pswitch_1
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_AES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    const/16 v0, 0xd

    goto :goto_0

    :pswitch_2
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_AES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    const/16 v0, 0xc

    goto :goto_0

    :pswitch_3
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_6
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v1

    const v2, 0x186a0

    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->xorHashPasswordReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-static {p2, p3, v1, v2, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object p2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p3

    invoke-interface {p3, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setSalt([B)V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p3

    invoke-interface {p3, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setHash([B)V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p2

    int-to-long v1, v2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptSpinCount(Ljava/math/BigInteger;)V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p2

    sget-object p3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgType;->TYPE_ANY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgType$Enum;

    invoke-interface {p2, p3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptAlgorithmType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgType$Enum;)V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p2

    sget-object p3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgClass;->HASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgClass$Enum;

    invoke-interface {p2, p3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptAlgorithmClass(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgClass$Enum;)V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptProviderType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;)V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object p1

    int-to-long p2, v0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptAlgorithmSid(Ljava/math/BigInteger;)V

    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTrackRevisions(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetTrackRevisions()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->addNewTrackRevisions()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetTrackRevisions()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->unsetTrackRevisions()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUpdateFields()V
    .locals 2

    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->setUpdateFields(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void
.end method

.method public setZoomPercent(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetZoom()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->addNewZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;->setPercent(Ljava/math/BigInteger;)V

    return-void
.end method

.method public validateProtectionPassword(Ljava/lang/String;)Z
    .locals 6

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getCryptAlgorithmSid()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getHash()[B

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getSalt()[B

    move-result-object v2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getCryptSpinCount()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    packed-switch v0, :pswitch_data_0

    return v4

    :pswitch_0
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md4:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md2:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->xorHashPasswordReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-static {p1, v0, v2, v3, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v4

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
