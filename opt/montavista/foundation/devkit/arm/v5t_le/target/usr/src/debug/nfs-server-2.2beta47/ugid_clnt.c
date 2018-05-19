/*
 * Please do not edit this file.
 * It was generated using rpcgen.
 */

#include <memory.h> /* for memset */
#include "ugid.h"
#include <rpc/rpc.h>

/* Default timeout can be changed using clnt_control() */
static struct timeval TIMEOUT = { 25, 0 };

int *
authenticate_1(int *argp, CLIENT *clnt)
{
	static int clnt_res;

	memset((char *)&clnt_res, 0, sizeof(clnt_res));
	if (clnt_call(clnt, AUTHENTICATE, (xdrproc_t) xdr_int, (caddr_t) argp, (xdrproc_t) xdr_int, (caddr_t) &clnt_res, TIMEOUT) != RPC_SUCCESS) {
		return (NULL);
	}
	return (&clnt_res);
}

int *
name_uid_1(ugname *argp, CLIENT *clnt)
{
	static int clnt_res;

	memset((char *)&clnt_res, 0, sizeof(clnt_res));
	if (clnt_call(clnt, NAME_UID, (xdrproc_t) xdr_ugname, (caddr_t) argp, (xdrproc_t) xdr_int, (caddr_t) &clnt_res, TIMEOUT) != RPC_SUCCESS) {
		return (NULL);
	}
	return (&clnt_res);
}

int *
group_gid_1(ugname *argp, CLIENT *clnt)
{
	static int clnt_res;

	memset((char *)&clnt_res, 0, sizeof(clnt_res));
	if (clnt_call(clnt, GROUP_GID, (xdrproc_t) xdr_ugname, (caddr_t) argp, (xdrproc_t) xdr_int, (caddr_t) &clnt_res, TIMEOUT) != RPC_SUCCESS) {
		return (NULL);
	}
	return (&clnt_res);
}

ugname *
uid_name_1(int *argp, CLIENT *clnt)
{
	static ugname clnt_res;

	memset((char *)&clnt_res, 0, sizeof(clnt_res));
	if (clnt_call(clnt, UID_NAME, (xdrproc_t) xdr_int, (caddr_t) argp, (xdrproc_t) xdr_ugname, (caddr_t) &clnt_res, TIMEOUT) != RPC_SUCCESS) {
		return (NULL);
	}
	return (&clnt_res);
}

ugname *
gid_group_1(int *argp, CLIENT *clnt)
{
	static ugname clnt_res;

	memset((char *)&clnt_res, 0, sizeof(clnt_res));
	if (clnt_call(clnt, GID_GROUP, (xdrproc_t) xdr_int, (caddr_t) argp, (xdrproc_t) xdr_ugname, (caddr_t) &clnt_res, TIMEOUT) != RPC_SUCCESS) {
		return (NULL);
	}
	return (&clnt_res);
}
